/*
 *  By downloading, copying, installing or using the software you agree to this license.
 *  If you do not agree to this license, do not download, install,
 *  copy or use the software.
 *  
 *  
 *  License Agreement
 *  For Open Source Computer Vision Library
 *  (3 - clause BSD License)
 *  
 *  Redistribution and use in source and binary forms, with or without modification,
 *  are permitted provided that the following conditions are met :
 *  
 *  *Redistributions of source code must retain the above copyright notice,
 *  this list of conditions and the following disclaimer.
 *  
 *  * Redistributions in binary form must reproduce the above copyright notice,
 *  this list of conditions and the following disclaimer in the documentation
 *  and / or other materials provided with the distribution.
 *  
 *  * Neither the names of the copyright holders nor the names of the contributors
 *  may be used to endorse or promote products derived from this software
 *  without specific prior written permission.
 *  
 *  This software is provided by the copyright holders and contributors "as is" and
 *  any express or implied warranties, including, but not limited to, the implied
 *  warranties of merchantability and fitness for a particular purpose are disclaimed.
 *  In no event shall copyright holders or contributors be liable for any direct,
 *  indirect, incidental, special, exemplary, or consequential damages
 *  (including, but not limited to, procurement of substitute goods or services;
 *  loss of use, data, or profits; or business interruption) however caused
 *  and on any theory of liability, whether in contract, strict liability,
 *  or tort(including negligence or otherwise) arising in any way out of
 *  the use of this software, even if advised of the possibility of such damage.
 */

#include "perf_precomp.hpp"

namespace cvtest
{

using std::tr1::tuple;
using std::tr1::get;
using namespace perf;
using namespace testing;
using namespace cv;
using namespace cv::ximgproc;

CV_ENUM(GuideMatType, CV_8UC1, CV_8UC3, CV_32FC1, CV_32FC3) //reduced set
CV_ENUM(SourceMatType, CV_8UC1, CV_8UC2, CV_8UC3, CV_8UC4, CV_32FC1, CV_32FC2, CV_32FC3, CV_32FC4) //full supported set
CV_ENUM(DTFMode, DTF_NC, DTF_IC, DTF_RF)
typedef tuple<GuideMatType, SourceMatType, Size, double, double, DTFMode> DTTestParams;

typedef TestBaseWithParam<DTTestParams> DomainTransformTest;

PERF_TEST_P( DomainTransformTest, perf,
             Combine(
                      GuideMatType::all(),
                      SourceMatType::all(),
                      Values(szVGA, sz720p),
                      Values(10.0, 80.0),
                      Values(30.0, 50.0),
                      DTFMode::all()
                    )
           )
{
    int guideType       = get<0>(GetParam());
    int srcType         = get<1>(GetParam());
    Size size           = get<2>(GetParam());
    double sigmaSpatial = get<3>(GetParam());
    double sigmaColor   = get<4>(GetParam());
    int dtfType         = get<5>(GetParam());

    Mat guide(size, guideType);
    Mat src(size, srcType);
    Mat dst(size, srcType);

    declare.in(guide, src, WARMUP_RNG).out(dst).tbb_threads(cv::getNumberOfCPUs());

    cv::setNumThreads(cv::getNumberOfCPUs());
    TEST_CYCLE_N(5)
    {
        dtFilter(guide, src, dst, sigmaSpatial, sigmaColor, dtfType);
    }
    
    SANITY_CHECK(dst);
}

}